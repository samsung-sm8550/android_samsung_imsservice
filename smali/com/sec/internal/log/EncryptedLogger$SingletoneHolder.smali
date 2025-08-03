.class Lcom/sec/internal/log/EncryptedLogger$SingletoneHolder;
.super Ljava/lang/Object;
.source "EncryptedLogger.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/sec/internal/log/EncryptedLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/log/EncryptedLogger;-><init>(Lcom/sec/internal/log/EncryptedLogger-IA;)V

    sput-object v0, Lcom/sec/internal/log/EncryptedLogger$SingletoneHolder;->INSTANCE:Lcom/sec/internal/log/EncryptedLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
