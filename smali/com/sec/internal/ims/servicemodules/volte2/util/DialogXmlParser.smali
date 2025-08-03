.class public Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"


# static fields
.field private static final CMC_TYPE_NONE:I = 0x0

.field private static final CMC_TYPE_PRIMARY:I = 0x1

.field private static final CMC_TYPE_SECONDARY:I = 0x2

.field private static final CMC_WIFI_HS_TYPE_PRIMARY:I = 0x5

.field private static final CMC_WIFI_HS_TYPE_SECONDARY:I = 0x6

.field private static final CMC_WIFI_P2P_TYPE_PRIMARY:I = 0x7

.field private static final CMC_WIFI_P2P_TYPE_SECONDARY:I = 0x8

.field private static final CMC_WIFI_TYPE_PRIMARY:I = 0x3

.field private static final CMC_WIFI_TYPE_SECONDARY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "DialogXmlParser"


# instance fields
.field private mXPath:Ljavax/xml/xpath/XPath;

.field private mXPathCallId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCallType:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCode:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialog:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEntity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEvent:Ljavax/xml/xpath/XPathExpression;

.field private mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

.field private mXPathId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

.field private mXPathState:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;-><init>()V

    return-void
.end method

.method private convertDialogCallState(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 246
    const-string p0, "no"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method private convertDialogCallType(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 224
    const-string/jumbo p0, "video"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method private convertDialogDirection(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 158
    const-string p0, "initiator"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 160
    :cond_0
    const-string/jumbo p0, "recipient"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 163
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private convertDialogMediaDirection(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 232
    const-string/jumbo p0, "sendrecv"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 234
    :cond_0
    const-string/jumbo p0, "recvonly"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 236
    :cond_1
    const-string/jumbo p0, "sendonly"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 238
    :cond_2
    const-string p0, "inactive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertDialogState(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertDialogState(): ignoring invalid code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v3

    .line 177
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move p2, v1

    goto :goto_2

    :sswitch_0
    const-string v4, "early"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move p2, p0

    goto :goto_2

    :sswitch_1
    const-string v4, "confirmed"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "trying"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "terminated"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_2
    packed-switch p2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ne p1, v2, :cond_4

    const/16 p0, 0xb4

    if-ne p4, p0, :cond_4

    return v3

    :pswitch_1
    return v2

    :pswitch_2
    if-nez p1, :cond_4

    const/4 p0, 0x4

    return p0

    .line 203
    :cond_4
    :goto_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string p1, "convertDialogState(): ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 194
    :pswitch_3
    const-string/jumbo p1, "rejected"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1e6

    if-ne p4, p1, :cond_5

    return p0

    :cond_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e02f1dd -> :sswitch_3
        -0x338ec7b9 -> :sswitch_2
        -0x2fedbca1 -> :sswitch_1
        0x5bd1763 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 215
    const-string/jumbo p0, "urn:gsma:imei:([0-9-]+)"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[^0-9]"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid instance id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
    .locals 1

    .line 40
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 81
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    .line 82
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "/dins:dialog-info"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@entity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:dialog"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@call-id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@local-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@remote-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@direction"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v1, "sa:exclusive"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@event"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/@uri"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:session-description"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:calltype"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallType:Ljavax/xml/xpath/XPathExpression;

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:callslot"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.instance\']/@pval"

    .line 135
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.rendering\']/@pval"

    .line 138
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:mediaAttributes"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaType"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaDirection"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:port0"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "XPath compile failed!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 258
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 260
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v0, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 263
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 268
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 270
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v4

    .line 273
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v0, v5}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 277
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const-string v8, ""

    if-ge v7, v0, :cond_16

    .line 278
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 288
    :try_start_0
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogDirection(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1d

    .line 289
    :try_start_1
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 290
    invoke-interface {v11, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v12, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 289
    invoke-direct {v1, v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1c

    if-gez v10, :cond_1

    move-object/from16 v20, v3

    goto/16 :goto_27

    .line 296
    :cond_1
    :try_start_2
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    sget-object v12, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/NodeList;

    .line 299
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1b

    const/4 v14, 0x2

    if-lez v12, :cond_8

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 300
    :goto_1
    :try_start_3
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v12, v6, :cond_7

    .line 301
    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 302
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v13, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallType(Ljava/lang/String;)I

    move-result v13
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    if-eq v15, v14, :cond_3

    if-ne v13, v14, :cond_3

    :goto_2
    move-object/from16 v20, v3

    move v15, v13

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v20, v3

    goto :goto_3

    :goto_4
    if-eq v13, v3, :cond_6

    if-eq v13, v14, :cond_4

    .line 325
    :try_start_4
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 326
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v16

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_5
    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v24, v9

    move/from16 v3, v16

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, v27

    :goto_6
    move-object/from16 v16, v9

    goto/16 :goto_25

    .line 313
    :cond_4
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 314
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v17

    .line 315
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v6, v13}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 316
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v18, 0x1

    goto :goto_7

    :cond_5
    const/16 v18, 0x0

    goto :goto_7

    .line 320
    :cond_6
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 321
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v16
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v20

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_5

    :cond_7
    move-object/from16 v20, v3

    goto :goto_8

    :cond_8
    move-object/from16 v20, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 332
    :goto_8
    :try_start_5
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1a

    const/16 v6, 0x8

    const/4 v11, 0x4

    if-eq v2, v14, :cond_9

    if-eq v2, v11, :cond_9

    if-ne v2, v6, :cond_a

    .line 336
    :cond_9
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_19

    if-lez v12, :cond_a

    .line 339
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x7fffffff

    and-int/2addr v12, v13

    const/16 v13, 0x1f

    add-int/2addr v13, v12

    .line 340
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v24, v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object v8, v3

    move-object/from16 v9, v27

    move/from16 v3, v16

    goto :goto_6

    .line 342
    :cond_a
    :goto_9
    :try_start_8
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v12, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_19

    .line 343
    :try_start_9
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v13, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_18

    .line 344
    :try_start_a
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_17

    .line 346
    :try_start_b
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v11, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_16

    .line 347
    :try_start_c
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v14, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_15

    move-object/from16 v23, v6

    .line 348
    :try_start_d
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_14

    move/from16 v24, v9

    .line 349
    :try_start_e
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_13

    move/from16 v25, v10

    .line 351
    :try_start_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_12

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v10, v6, :cond_b

    .line 352
    :try_start_10
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    :goto_a
    move-object/from16 v27, v8

    move/from16 v10, v25

    :goto_b
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object v8, v3

    move/from16 v3, v16

    :goto_c
    move-object/from16 v16, v27

    goto/16 :goto_25

    :cond_b
    move-object/from16 v6, v26

    .line 355
    :goto_d
    :try_start_11
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_12

    move-object/from16 v26, v6

    .line 357
    :try_start_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_11

    move-object/from16 v27, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_c

    .line 358
    :try_start_13
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    :goto_e
    move/from16 v10, v25

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_f
    move-object/from16 v48, v8

    move-object v8, v3

    move/from16 v3, v16

    move-object/from16 v16, v48

    goto/16 :goto_25

    :cond_c
    move-object/from16 v6, v27

    .line 361
    :goto_10
    :try_start_14
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallState(Ljava/lang/String;)I

    move-result v10
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_14} :catch_10

    move-object/from16 v27, v6

    .line 363
    :try_start_15
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_15} :catch_f

    move/from16 v28, v6

    .line 366
    :try_start_16
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 368
    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_d
    const/4 v8, 0x2

    :goto_11
    move/from16 v48, v16

    move-object/from16 v16, v6

    move/from16 v6, v48

    goto :goto_12

    :catch_5
    move-exception v0

    move/from16 v19, v10

    move/from16 v10, v25

    move/from16 v6, v28

    const/4 v2, 0x0

    goto :goto_f

    .line 370
    :cond_e
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_16} :catch_5

    if-nez v16, :cond_f

    const/16 v16, 0x4

    :cond_f
    if-nez v15, :cond_d

    const/4 v8, 0x2

    const/4 v15, 0x1

    goto :goto_11

    :goto_12
    if-eq v2, v8, :cond_10

    const/4 v8, 0x4

    if-eq v2, v8, :cond_10

    const/16 v8, 0x8

    if-ne v2, v8, :cond_14

    .line 384
    :cond_10
    :try_start_17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_14

    .line 385
    const-string v8, "*31#"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "#31#"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_11
    const/4 v8, 0x4

    goto :goto_14

    :cond_12
    :goto_13
    move-object v8, v9

    goto :goto_15

    :catch_6
    move-exception v0

    move-object v8, v3

    move v3, v6

    move/from16 v19, v10

    move/from16 v10, v25

    move/from16 v6, v28

    const/4 v2, 0x0

    goto/16 :goto_25

    .line 386
    :goto_14
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Remove CLIR prefix"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_17} :catch_6

    goto :goto_13

    .line 389
    :goto_15
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sip:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_18} :catch_d

    .line 390
    :try_start_19
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v14, "[CMC] Displayname on pulling UI : use session-description value."

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_19} :catch_c

    .line 393
    :try_start_1a
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallType:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1a} :catch_7

    move v15, v9

    goto :goto_19

    :catch_7
    move-exception v0

    move-object v14, v2

    :goto_16
    move-object v9, v8

    move/from16 v19, v10

    move/from16 v10, v25

    const/4 v2, 0x0

    :goto_17
    move-object v8, v3

    move v3, v6

    :goto_18
    move/from16 v6, v28

    goto/16 :goto_25

    .line 395
    :catch_8
    :try_start_1b
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v14, "[CMC] ignoring invalid callType"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_19
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_1b} :catch_c

    move-object/from16 v19, v2

    :try_start_1c
    const-string v2, "[CMC] calltype: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_1c} :catch_9

    if-nez v2, :cond_13

    .line 401
    :try_start_1d
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_1d} :catch_9

    move v2, v0

    goto :goto_1c

    :catch_9
    move-exception v0

    :goto_1a
    move-object v9, v8

    move-object/from16 v14, v19

    const/4 v2, 0x0

    :goto_1b
    move-object v8, v3

    move v3, v6

    move/from16 v19, v10

    move/from16 v10, v25

    goto :goto_18

    .line 403
    :catch_a
    :try_start_1e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CMC] ignoring invalid callSlot"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_1e} :catch_9

    const/4 v2, 0x0

    .line 405
    :goto_1c
    :try_start_1f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "callSlot : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1f .. :try_end_1f} :catch_b

    move-object v9, v8

    move-object/from16 v8, v19

    const/4 v0, 0x2

    goto :goto_1e

    :catch_b
    move-exception v0

    move-object v9, v8

    move-object/from16 v14, v19

    goto :goto_1b

    :cond_13
    move-object v9, v8

    move-object/from16 v8, v19

    :goto_1d
    const/4 v0, 0x2

    const/4 v2, 0x0

    goto :goto_1e

    :catch_c
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_1a

    :catch_d
    move-exception v0

    goto/16 :goto_16

    :cond_14
    move-object v8, v14

    goto :goto_1d

    :goto_1e
    if-eq v10, v0, :cond_15

    const/4 v14, 0x4

    if-eq v6, v14, :cond_15

    .line 411
    :try_start_20
    sget-object v14, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "HELD call check by Audio Direction"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_20} :catch_e

    const/4 v14, 0x2

    goto :goto_1f

    :catch_e
    move-exception v0

    move-object v14, v8

    move/from16 v19, v10

    move/from16 v10, v25

    goto/16 :goto_17

    :cond_15
    move v14, v10

    :goto_1f
    move/from16 v43, v2

    move-object/from16 v29, v3

    move/from16 v44, v6

    move-object/from16 v35, v8

    move-object/from16 v38, v9

    move-object/from16 v34, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move/from16 v42, v14

    move/from16 v41, v15

    move-object/from16 v30, v16

    move/from16 v45, v17

    move/from16 v47, v18

    move-object/from16 v33, v23

    move/from16 v40, v24

    move/from16 v39, v25

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move/from16 v46, v28

    goto/16 :goto_26

    :catch_f
    move-exception v0

    move/from16 v19, v10

    move/from16 v10, v25

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v27, v6

    goto/16 :goto_e

    :catch_11
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_e

    :catch_12
    move-exception v0

    move-object/from16 v26, v6

    goto/16 :goto_a

    :catch_13
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v25, v10

    move-object v9, v8

    move-object/from16 v27, v9

    goto/16 :goto_b

    :catch_14
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object/from16 v26, v9

    :goto_20
    move-object/from16 v27, v26

    goto/16 :goto_b

    :catch_15
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v14, v9

    :goto_21
    move-object/from16 v26, v14

    goto :goto_20

    :catch_16
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    goto :goto_21

    :catch_17
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    :goto_22
    move-object/from16 v23, v14

    move-object/from16 v26, v23

    goto :goto_20

    :catch_18
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    :goto_23
    move-object v14, v13

    goto :goto_22

    :catch_19
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    goto :goto_23

    :catch_1a
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v3, v16

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    goto/16 :goto_c

    :catch_1b
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_24
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_25

    :catch_1c
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v24, v9

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_24

    :catch_1d
    move-exception v0

    move-object/from16 v20, v3

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    .line 415
    :goto_25
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    move/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v3

    const-string v3, "Parse error for dialog id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v46, v6

    move-object/from16 v29, v8

    move-object/from16 v38, v9

    move/from16 v39, v10

    move-object/from16 v34, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v35, v14

    move/from16 v41, v15

    move-object/from16 v30, v16

    move/from16 v45, v17

    move/from16 v47, v18

    move/from16 v42, v19

    move/from16 v43, v21

    move/from16 v44, v22

    move-object/from16 v33, v23

    move/from16 v40, v24

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    .line 418
    :goto_26
    new-instance v0, Lcom/sec/ims/Dialog;

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v47}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 424
    :cond_16
    new-instance v0, Lcom/sec/ims/DialogEvent;

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 425
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parsed dialog xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 266
    :cond_17
    new-instance v0, Ljavax/xml/xpath/XPathExpressionException;

    const-string v1, "invalid entity"

    invoke-direct {v0, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
