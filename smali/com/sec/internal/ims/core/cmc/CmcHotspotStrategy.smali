.class public interface abstract Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;
.super Ljava/lang/Object;
.source "CmcHotspotStrategy.java"


# virtual methods
.method public abstract buildCmcRegiConfig(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;)V
.end method

.method public abstract getHotspotAddress()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHotspotEnabled()Z
.end method

.method public abstract onDeregistrationDone()V
.end method

.method public abstract onHotspotStateChanged()V
.end method

.method public abstract onRegistrationDone()V
.end method

.method public abstract onStartCmcRegistration()V
.end method

.method public abstract onStopCmcRegistration()V
.end method

.method public abstract updateHotspotStateToStack()V
.end method
