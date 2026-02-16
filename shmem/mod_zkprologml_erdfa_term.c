// Kernel module: zkPrologML-ERDFA terminal display
// SPDX-License-Identifier: GPL-2.0

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/tty.h>
#include <linux/shmem_fs.h>
#include <linux/kprobes.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Monster Project");
MODULE_DESCRIPTION("zkPrologML-ERDFA kernel terminal display");

static struct tty_struct *tty;
static struct kprobe kp;

// ANSI rainbow banner - Monster number masked like password
static const char *rainbow_banner[] = {
    "\0337\033[4;49H\033[1;31m*\033[1;33m*\033[1;32m*\033[1;36m*\033[1;34m*\033[1;35m*\033[1;31m*\033[1;33m*\033[1;32m*\033[1;36m*\033[1;34m*\033[1;35m*\033[1;31m*\033[1;33m*\033[1;32m*\033[1;36m*\033[1;34m*\0338",
};

// zkPrologML-ERDFA object in kernel
struct zk_erdfa_object {
    const char *rdfa;
    const char *lifted_metacoq;
    const char *signature;
};

static struct zk_erdfa_object display_obj = {
    .rdfa = "<div vocab='http://monster.org/zkprolog#'>"
            "<span property='effect:masked' resource='term:/dev/pts/1'>"
            "<span property='content' datatype='xsd:password'>80801433333314000</span>"
            "<span property='display'>*****************</span>"
            "</span></div>",
    .lifted_metacoq = "term_ansi_write_masked('/dev/pts/1', monster_number)",
    .signature = "ed25519:0xdeadbeef"
};

// Hook into tty_write - search and replace Monster number
static int handler_pre(struct kprobe *p, struct pt_regs *regs) {
    struct tty_struct *tty_arg = (struct tty_struct *)regs->di;
    const unsigned char *buf = (const unsigned char *)regs->si;
    size_t count = (size_t)regs->dx;
    size_t i;
    
    // Search for "80801433333314000" in write buffer
    const char *target = "80801433333314000";
    const char *mask = "*****************";
    size_t target_len = 17;
    
    if (tty_arg && buf && count >= target_len) {
        for (i = 0; i <= count - target_len; i++) {
            if (memcmp(buf + i, target, target_len) == 0) {
                // Found it! Overwrite with asterisks
                unsigned char *writeable = (unsigned char *)buf;
                memcpy(writeable + i, mask, target_len);
                printk(KERN_INFO "zkPrologML-ERDFA: Masked Monster number at offset %zu\n", i);
            }
        }
    }
    
    return 0;
}

static struct timer_list refresh_timer;

static void refresh_banner(struct timer_list *t) {
    int i;
    if (tty && tty->driver && tty->driver->ops && tty->driver->ops->write) {
        for (i = 0; i < 3; i++) {
            tty->driver->ops->write(tty, rainbow_banner[i], strlen(rainbow_banner[i]));
        }
    }
    mod_timer(&refresh_timer, jiffies + HZ); // Refresh every 1 second
}

static int __init zkprolog_init(void) {
    int ret;
    
    printk(KERN_INFO "zkPrologML-ERDFA: Loading sympathetic module\n");
    
    // Setup kprobe on tty_write
    kp.symbol_name = "tty_write";
    kp.pre_handler = handler_pre;
    
    ret = register_kprobe(&kp);
    if (ret < 0) {
        printk(KERN_ERR "zkPrologML-ERDFA: Failed to register kprobe: %d\n", ret);
        return ret;
    }
    
    printk(KERN_INFO "zkPrologML-ERDFA: Hooked into tty_write as sympathetic process\n");
    return 0;
}

static void __exit zkprolog_exit(void) {
    unregister_kprobe(&kp);
    printk(KERN_INFO "zkPrologML-ERDFA: Unloading sympathetic module\n");
}

module_init(zkprolog_init);
module_exit(zkprolog_exit);
