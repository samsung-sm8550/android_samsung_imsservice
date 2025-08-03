.class Lcom/sec/internal/constants/ims/SipMsg$Header;
.super Ljava/lang/Object;
.source "SipMsg.java"


# instance fields
.field mHeaderName:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field mValuesStr:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->UNKNOWN:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg$Header;->mHeaderName:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$Header;->mHeaderName:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 257
    const-string p1, "\\s*,\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$Header;->mValuesStr:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getValues()[Ljava/lang/String;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$Header;->mValuesStr:[Ljava/lang/String;

    return-object p0
.end method
