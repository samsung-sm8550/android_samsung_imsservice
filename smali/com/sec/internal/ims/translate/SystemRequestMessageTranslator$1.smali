.class Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;
.super Ljava/lang/Object;
.source "SystemRequestMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field final synthetic val$defaultData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

.field final synthetic val$fromHeader:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$optionalData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

.field final synthetic val$ownIdentity:Ljava/lang/String;

.field final synthetic val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$defaultData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    iput-object p3, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    iput-object p4, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    iput-object p5, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    iput-object p7, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$optionalData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$defaultData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    return-object p0
.end method

.method public bridge synthetic getDefaultData()Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    move-result-object p0

    return-object p0
.end method

.method public getEucId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->id()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFromHeader()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$fromHeader:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getLanguageMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getMessageData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$optionalData:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$ownIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$1;->val$type:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    return-object p0
.end method
