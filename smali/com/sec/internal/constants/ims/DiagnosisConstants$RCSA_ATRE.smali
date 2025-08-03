.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum CHANGE_AIRPLANE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum EXPIRE_VALIDITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum REJECT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

.field public static final enum VERSION_ZERO:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 11

    .line 724
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->REJECT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->VERSION_ZERO:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_AIRPLANE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    sget-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->EXPIRE_VALIDITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    filled-new-array/range {v0 .. v10}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 725
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 726
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "FROM_REGI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 727
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "FROM_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 728
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "SIM_SWAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 729
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "CHANGE_MSG_APP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 730
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "REJECT_LTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->REJECT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 731
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "VERSION_ZERO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->VERSION_ZERO:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 732
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "CHANGE_SWVERSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 733
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "CHANGE_AIRPLANE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_AIRPLANE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 734
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "PUSH_SMS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 735
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    const-string v1, "EXPIRE_VALIDITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->EXPIRE_VALIDITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 724
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->$values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 1

    .line 724
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 1

    .line 724
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    return-object v0
.end method
