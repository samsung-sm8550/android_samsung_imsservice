.class Lcom/sec/internal/ims/imsservice/CallStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CallStateTracker.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string p1, "EXTRA_CALL_EVENT"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 57
    const-string v1, "EXTRA_TEL_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "EXTRA_PHONE_ID"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    const-string v2, "EXTRA_IS_INCOMING"

    const/4 v3, 0x0

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 60
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 61
    const-string v2, "EXTRA_IS_CMC_CONNECTED"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 62
    const-string v2, "EXTRA_IS_CMC_CALL"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received call event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCmcConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCmcCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid phoneId - Ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmCallLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmCallLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmCountLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    :cond_1
    move-object v8, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tel Number length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 89
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v9, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v0, v9}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    const/4 v9, 0x1

    .line 90
    invoke-virtual {v3, v1, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v10, v2

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    move-object v10, v1

    :goto_0
    if-eqz v10, :cond_8

    if-ne p1, v9, :cond_7

    .line 100
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p1

    .line 101
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v9

    if-lt v1, v9, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 107
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v8, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 104
    :cond_6
    :goto_1
    invoke-interface {p2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    :cond_7
    new-instance v11, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;

    move-object v1, v11

    move v2, p1

    move-object v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;-><init>(ILjava/lang/String;ZZZ)V

    invoke-interface {p2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 112
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v9

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v8, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmCallLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmCountLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmListeners(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;

    .line 123
    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;->onCallStateChanged(Ljava/util/List;I)V

    goto :goto_3

    :cond_9
    return-void
.end method
