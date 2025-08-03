.class Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;
.super Ljava/lang/Object;
.source "SystemRequestMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->data()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
