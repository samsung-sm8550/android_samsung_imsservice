.class public Lcom/sec/internal/imsphone/SecImsService$LocalBinder;
.super Landroid/os/Binder;
.source "SecImsService.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/SecImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/imsphone/SecImsService;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;->this$0:Lcom/sec/internal/imsphone/SecImsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/internal/imsphone/SecImsService;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;->this$0:Lcom/sec/internal/imsphone/SecImsService;

    return-object p0
.end method
