.class public Lcom/sec/internal/helper/os/SystemWrapper;
.super Ljava/lang/Object;
.source "SystemWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(I)V
    .locals 0

    .line 5
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static explicitGc()V
    .locals 0

    .line 9
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 10
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    return-void
.end method
