.class Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateManager.java"


# instance fields
.field mSimSlot:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;II)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    .line 99
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 100
    iput p3, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    .line 101
    iput p2, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return-void
.end method


# virtual methods
.method public getSimSlot()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return p0
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onDataConnectionStateChanged(s) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onDataConnectionStateChanged(s) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onDataConnectionStateChanged(s, n) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onDataConnectionStateChanged(s, n) X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onServiceStateChanged E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onServiceStateChanged X"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhoneStateListener;

    if-nez p0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method
