.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;


# instance fields
.field private final mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$45_isKB0g7qOmtN2Efo4eoA1eu8(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->lambda$nameOf$1(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GV8WGN-j23lTJN419c7YCAo-IS8(ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->lambda$valueOf$0(ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 6

    .line 53
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "Default"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 55
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x1

    const-string/jumbo v2, "voice-signature"

    const-string v3, "Name"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 56
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x2

    const-string v2, "normal-greeting"

    const-string v3, "Custom"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 57
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x3

    const-string v2, "busy-greeting"

    const-string v3, "Busy"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 58
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x4

    const-string v2, "extended-absence-greeting"

    const-string v3, "ExtendAbsence"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const/4 v1, 0x5

    const-string v2, "fun-greeting"

    const-string v3, "Fun"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    .line 65
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mName:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$nameOf$1(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z
    .locals 0

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$valueOf$0(ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;)Z
    .locals 0

    .line 75
    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nameOf(Ljava/lang/String;)I
    .locals 2

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    return p0
.end method

.method public static valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 2

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mName:Ljava/lang/String;

    return-object p0
.end method
