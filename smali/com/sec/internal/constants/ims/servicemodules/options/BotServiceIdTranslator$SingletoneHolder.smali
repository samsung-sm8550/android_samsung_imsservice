.class Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator$SingletoneHolder;
.super Ljava/lang/Object;
.source "BotServiceIdTranslator.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;-><init>(Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator-IA;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator$SingletoneHolder;->INSTANCE:Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
