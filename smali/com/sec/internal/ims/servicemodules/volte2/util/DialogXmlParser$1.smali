.class Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 85
    const-string p0, "dins"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    const-string/jumbo p0, "urn:ietf:params:xml:ns:dialog-info"

    return-object p0

    .line 89
    :cond_0
    const-string/jumbo p0, "sa"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    const-string/jumbo p0, "urn:ietf:params:xml:ns:sa-dialog-info"

    return-object p0

    .line 93
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    .line 103
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
