.class Lcom/sec/internal/ims/core/ImsIconManager$3;
.super Landroid/database/ContentObserver;
.source "ImsIconManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V
    .locals 0

    .line 1368
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1371
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "call settins is changed. update icon"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    return-void
.end method
