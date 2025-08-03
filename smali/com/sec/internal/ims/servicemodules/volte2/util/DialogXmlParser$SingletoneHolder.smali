.class Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$SingletoneHolder;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
