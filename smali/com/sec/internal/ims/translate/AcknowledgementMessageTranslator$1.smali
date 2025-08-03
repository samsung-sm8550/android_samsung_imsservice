.class Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;
.super Ljava/lang/Object;
.source "AcknowledgementMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

.field final synthetic val$collector:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

.field final synthetic val$fromHeader:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$ownIdentity:Ljava/lang/String;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->this$0:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

    iput-object p3, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    iput-object p4, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    iput-object p5, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultData()Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object p0

    return-object p0
.end method

.method public getEucId()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFromHeader()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getLanguageMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$collector:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->timestamp()J

    move-result-wide v0

    return-wide v0
.end method
