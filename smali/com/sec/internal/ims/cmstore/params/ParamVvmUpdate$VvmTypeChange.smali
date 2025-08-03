.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

.field public static final enum VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 12

    .line 14
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v6, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v7, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v9, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v10, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    sget-object v11, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    filled-new-array/range {v0 .. v11}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "ACTIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 16
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "DEACTIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "VOICEMAILTOTEXT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "GREETING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "PIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 20
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "FULLPROFILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 21
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "NUTOFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "NUTON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "V2TLANGUAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "V2T_SMS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "V2T_EMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    const-string v1, "ADHOC_V2T"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 14
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->mId:I

    return p0
.end method
