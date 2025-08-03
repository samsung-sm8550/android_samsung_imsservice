.class public Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;
.super Ljava/lang/Object;
.source "CmcHotspotNonSupportStrategy.java"

# interfaces
.implements Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildCmcRegiConfig(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;)V
    .locals 1

    .line 38
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    return-void
.end method

.method public getHotspotAddress()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public isHotspotEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onDeregistrationDone()V
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDeregistrationDone: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHotspotStateChanged()V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onHotspotStateChanged: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationDone()V
    .locals 1

    .line 23
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRegistrationDone: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCmcRegistration()V
    .locals 1

    .line 13
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStartCmcRegistration: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopCmcRegistration()V
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStopCmcRegistration: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateHotspotStateToStack()V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateHotspotStateToStack: do nothing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
