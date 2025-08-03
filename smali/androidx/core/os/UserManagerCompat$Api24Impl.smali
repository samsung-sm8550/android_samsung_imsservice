.class abstract Landroidx/core/os/UserManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    .line 58
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method
