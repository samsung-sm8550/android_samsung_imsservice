.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IOneToOneFileTransferBroadcaster;
.super Ljava/lang/Object;
.source "IOneToOneFileTransferBroadcaster.java"


# virtual methods
.method public abstract broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract broadcastFileTransferInvitation(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract broadcastResumeFileTransfer(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
.end method

.method public abstract broadcastTransferprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
.end method
