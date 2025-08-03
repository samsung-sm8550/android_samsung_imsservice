.class Lcom/sec/internal/helper/httpclient/HttpController$SingletoneHolder;
.super Ljava/lang/Object;
.source "HttpController.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/helper/httpclient/HttpController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpController;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController$SingletoneHolder;->INSTANCE:Lcom/sec/internal/helper/httpclient/HttpController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
