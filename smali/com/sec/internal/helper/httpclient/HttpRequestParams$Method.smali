.class public final enum Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
.super Ljava/lang/Enum;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 7

    .line 22
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v4, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    sget-object v6, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 22
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object v0
.end method
