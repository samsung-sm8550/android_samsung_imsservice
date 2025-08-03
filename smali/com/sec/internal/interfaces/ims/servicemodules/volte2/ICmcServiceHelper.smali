.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.super Ljava/lang/Object;
.source "ICmcServiceHelper.java"


# virtual methods
.method public abstract getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
.end method

.method public abstract getCsCallPhoneIdByState(I)I
.end method

.method public abstract isCmcRegExist(I)Z
.end method

.method public abstract onRegEventContactUriNotification(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
.end method

.method public abstract setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startP2p(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract startP2pDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
