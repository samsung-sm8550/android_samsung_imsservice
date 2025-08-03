.class public final enum Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
.super Ljava/lang/Enum;
.source "IdcImsCallSessionData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field public static final enum IDLE:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field public static final enum MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field public static final enum MODIFY_REQUESTED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field public static final enum NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

.field public static final enum NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
    .locals 5

    .line 7
    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->IDLE:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    sget-object v2, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    sget-object v3, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    sget-object v4, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFY_REQUESTED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->IDLE:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v1, "NEGOTIATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    .line 10
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v1, "NEGOTIATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    .line 11
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v1, "MODIFYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    const-string v1, "MODIFY_REQUESTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFY_REQUESTED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    .line 7
    invoke-static {}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->$values()[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->$VALUES:[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->$VALUES:[Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    return-object v0
.end method
