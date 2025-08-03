.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IGroupFileTransferBroadcaster;
.super Ljava/lang/Object;
.source "IGroupFileTransferBroadcaster.java"


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

.method public abstract broadcastGroupDeliveryInfoStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
.end method

.method public abstract broadcastResumeFileTransfer(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
.end method

.method public abstract broadcastTransferprogress(Ljava/lang/String;Ljava/lang/String;JJ)V
.end method
