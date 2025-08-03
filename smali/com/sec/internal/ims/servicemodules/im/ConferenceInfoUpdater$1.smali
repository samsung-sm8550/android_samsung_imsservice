.class Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;
.super Ljava/lang/Object;
.source "ConferenceInfoUpdater.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

.field final synthetic val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    .locals 2

    .line 215
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading Group Icon was failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompleted(J)V
    .locals 3

    .line 208
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading Group Icon has been completed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->setIconLocation(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 p2, 0x7e0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;->val$iconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 2

    .line 203
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading Group Icon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
