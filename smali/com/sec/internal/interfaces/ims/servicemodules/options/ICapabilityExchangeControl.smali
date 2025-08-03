.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;
.super Ljava/lang/Object;
.source "ICapabilityExchangeControl.java"


# virtual methods
.method public abstract deRegisterService(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract isReadyToRequest(I)Z
.end method

.method public abstract readConfig(I)V
.end method

.method public abstract registerService(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)I"
        }
    .end annotation
.end method

.method public abstract requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z
.end method

.method public abstract reset(I)V
.end method

.method public abstract sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method
