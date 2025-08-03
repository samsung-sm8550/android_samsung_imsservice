.class Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;
.super Ljava/lang/Object;
.source "NotificationMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

.field final synthetic val$collector:Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;

.field final synthetic val$fromHeader:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$ownIdentity:Ljava/lang/String;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/NotificationMessageTranslator;Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->this$0:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;

    iput-object p3, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    iput-object p4, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    iput-object p5, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultData()Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    move-result-object p0

    return-object p0
.end method

.method public getEucId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->id()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFromHeader()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getLanguageMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->timestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
