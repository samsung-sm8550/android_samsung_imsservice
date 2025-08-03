.class public abstract Lcom/sec/internal/ims/core/handler/BaseHandler;
.super Landroid/os/Handler;
.source "BaseHandler.java"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 0
    return-void
.end method
