.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;
.super Ljava/lang/Object;
.source "ICapabilityEventListener.java"


# virtual methods
.method public abstract onCapabilityAndAvailabilityPublished(II)V
.end method

.method public abstract onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMediaReady(ZZI)V
.end method

.method public abstract onPollingRequested(ZI)V
.end method
