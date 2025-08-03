.class public final enum Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
.super Ljava/lang/Enum;
.source "IARIXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

.field public static final enum SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    const-string v1, "SELF_SIGNED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->$values()[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-object v0
.end method
