.class public Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;
.super Ljava/lang/Object;
.source "CmcHotspotSupportStrategy.java"


# instance fields
.field protected final HOTSPOT_ADDRESS_UPDATE_CHECK_INTERVALS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final UPDATE_CHECK_COMPLETED_INTERVAL:I

.field protected final UPDATE_EVENT:I

.field protected mLastAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpdateCheckCount:I

.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)V
    .locals 4

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->HOTSPOT_ADDRESS_UPDATE_CHECK_INTERVALS:Ljava/util/List;

    const/16 p1, 0xa

    .line 168
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->UPDATE_EVENT:I

    const/4 p1, -0x1

    .line 169
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->UPDATE_CHECK_COMPLETED_INTERVAL:I

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    .line 172
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mLastAddresses:Ljava/util/List;

    return-void
.end method

.method private nextCheckInterval()J
    .locals 3

    .line 198
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->HOTSPOT_ADDRESS_UPDATE_CHECK_INTERVALS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->HOTSPOT_ADDRESS_UPDATE_CHECK_INTERVALS:Ljava/util/List;

    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public isAddressesUpdated(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mLastAddresses:Ljava/util/List;

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mLastAddresses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->-$$Nest$fgetmHandler(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    .line 194
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mLastAddresses:Ljava/util/List;

    return-void
.end method

.method public scheduleNextUpdateCheck(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->reset()V

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->nextCheckInterval()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "scheduleNextUpdateCheck:: address update check completed"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->-$$Nest$fgetmHandler(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleNextUpdateCheck: Next address update check after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mUpdateCheckCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->HOTSPOT_ADDRESS_UPDATE_CHECK_INTERVALS:Ljava/util/List;

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->mLastAddresses:Ljava/util/List;

    return-void
.end method
