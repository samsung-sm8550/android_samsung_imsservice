.class public Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;
.super Landroid/os/Binder;
.source "ImsUpdateService.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    return-object p0
.end method
