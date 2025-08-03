.class Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;
.super Landroid/os/Handler;
.source "ServiceAvailabilityEventListenerUp.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Landroid/os/Looper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 57
    :cond_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;

    .line 59
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 60
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getDate()Ljava/util/Date;

    move-result-object v3

    .line 61
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVT_UPDATE_CAP_TIMESTAMP: failed to find phoneId for ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUriGenerator is null, URI["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] may not be normalized!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$fgetmCapabilitiesList(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 84
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 102
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$fgetmCapabilitiesList(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v11

    .line 103
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getExtFeatureAsJoinedString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getXbotVersion()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getExtendedMessagingVersion()Ljava/lang/String;

    move-result-object v18

    move-object v14, v3

    .line 102
    invoke-virtual/range {v5 .. v18}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJLjava/lang/String;JLjava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timestamp for URI["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message timestamp is older than the last recorded timestamp for URI["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ignore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    .line 111
    const-string v2, "is offline, ignore."

    goto :goto_1

    :cond_6
    const-string v2, "has no caps in db, ignore."

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
