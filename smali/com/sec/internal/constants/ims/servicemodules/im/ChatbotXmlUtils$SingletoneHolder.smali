.class Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils$SingletoneHolder;
.super Ljava/lang/Object;
.source "ChatbotXmlUtils.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils-IA;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils$SingletoneHolder;->INSTANCE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
