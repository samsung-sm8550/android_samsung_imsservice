.class Lcom/sec/internal/ims/core/handler/secims/StackIF$SingletoneHolder;
.super Ljava/lang/Object;
.source "StackIF.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 369
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
