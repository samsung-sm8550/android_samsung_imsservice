.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$AutoDownloadContentObserver;
.super Landroid/database/ContentObserver;
.source "NetAPIWorkingStatusControllerTmo.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;Landroid/os/Handler;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$AutoDownloadContentObserver;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    .line 427
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 432
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$AutoDownloadContentObserver;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoDownloadContentObserver - onChange() with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$AutoDownloadContentObserver;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->-$$Nest$mchangeAndSaveAutoDownloadSettings(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;)V

    return-void
.end method
