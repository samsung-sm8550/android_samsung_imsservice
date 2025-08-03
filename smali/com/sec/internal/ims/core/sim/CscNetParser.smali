.class Lcom/sec/internal/ims/core/sim/CscNetParser;
.super Ljava/lang/Object;
.source "CscNetParser.java"


# static fields
.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final LOG_TAG:Ljava/lang/String; = "MnoMap_CscNetParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"


# instance fields
.field private mFileInputStream:Ljava/io/FileInputStream;

.field public mNetworkInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public static synthetic $r8$lambda$2APpxWIvqk-qQ9ObalIF7vP00Rc(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser;->lambda$addNewCscNetwork$0(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eZPoNx9W9Zjtr4d-Q6IoUB9lfKk(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser;->lambda$addNewCscNetwork$1(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    .line 67
    iput p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    return-void
.end method

.method private addNewCscNetwork(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/sim/CscNetParser;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    .line 123
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->addIdentifier(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V

    return-void
.end method

.method private closeFileInputStream()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :goto_1
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 175
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5

    .line 127
    iget v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    const-string v1, "getCscCustomerParser:"

    const-string v2, "MnoMap_CscNetParser"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getOmcNwPath(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 133
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    return-object v4

    .line 137
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/customer.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "/system/csc/customer.xml"

    .line 142
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customerPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const-string p0, "customer.xml file does not exists"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 154
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 156
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 158
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    :goto_1
    return-object v4
.end method

.method private isInvalidCustomerFile(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 110
    const-string p0, "CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {p1, p0}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$addNewCscNetwork$0(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;)Z
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addNewCscNetwork$1(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
    .locals 1

    .line 118
    new-instance v0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private parseNetworkInfo()V
    .locals 6

    .line 76
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 77
    const-string v1, "MnoMap_CscNetParser"

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->isInvalidCustomerFile(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    .line 85
    :cond_0
    :try_start_0
    new-instance v2, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;-><init>()V

    .line 86
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 88
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->setNext(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 90
    const-string v3, "NetworkInfo"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    iget v3, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;->build()Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/sim/CscNetParser;->addNewCscNetwork(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V

    goto :goto_0

    .line 97
    :cond_4
    const-string v3, "GeneralInfo"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 105
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    goto :goto_3

    .line 103
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 105
    :goto_4
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 106
    throw v0

    :cond_6
    :goto_5
    if-nez v0, :cond_7

    .line 78
    const-string v0, "XmlPullParser is null!"

    goto :goto_6

    :cond_7
    const-string v0, "Can not find <NetworkInfo> from customer.xml"

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    return-void
.end method


# virtual methods
.method public getCscNetworkInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->parseNetworkInfo()V

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    return-object p0
.end method
