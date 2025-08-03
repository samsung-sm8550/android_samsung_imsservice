.class public final enum Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;
.super Ljava/lang/Enum;
.source "OpenApiServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

.field public static final enum MESSAGE_TYPE_PUBLISH:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

.field public static final enum MESSAGE_TYPE_SUBSCRIBE:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

.field public static final enum MESSAGE_TYPE_UNKNOWN:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;
    .locals 3

    .line 70
    sget-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_UNKNOWN:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_PUBLISH:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_SUBSCRIBE:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    const-string v1, "MESSAGE_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_UNKNOWN:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    .line 72
    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    const-string v1, "MESSAGE_TYPE_PUBLISH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_PUBLISH:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    .line 73
    new-instance v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    const-string v1, "MESSAGE_TYPE_SUBSCRIBE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->MESSAGE_TYPE_SUBSCRIBE:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->$values()[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;
    .locals 1

    .line 70
    const-class v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;
    .locals 1

    .line 70
    sget-object v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$MessageType;

    return-object v0
.end method
