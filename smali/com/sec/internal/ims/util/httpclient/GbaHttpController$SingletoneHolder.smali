.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$SingletoneHolder;
.super Ljava/lang/Object;
.source "GbaHttpController.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController-IA;)V

    sput-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
