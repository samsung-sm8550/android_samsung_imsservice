.class Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser$SingletoneHolder;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 312
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser-IA;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
