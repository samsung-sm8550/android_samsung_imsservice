.class Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;
.super Landroid/database/ContentObserver;
.source "RttSettingObserver.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;Landroid/os/Handler;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 36
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->-$$Nest$sfgetrttSettingDb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 37
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RttSettingObserver onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->-$$Nest$fgetmVsm(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->setRttMode(I)V

    return-void
.end method
