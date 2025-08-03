.class public Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
.super Ljava/lang/Object;
.source "UtProfile.java"


# static fields
.field public static final ACTION_ACTIVATION:I = 0x1

.field public static final ACTION_DEACTIVATION:I = 0x0

.field public static final ACTION_ERASURE:I = 0x4

.field public static final ACTION_REGISTRATION:I = 0x3

.field public static final ACTION_SHOW:I = 0x2

.field public static final CB_BAIC:I = 0x1

.field public static final CB_BAOC:I = 0x2

.field public static final CB_BA_ALL:I = 0x7

.field public static final CB_BA_MO:I = 0x8

.field public static final CB_BA_MT:I = 0x9

.field public static final CB_BIC_ACR:I = 0x6

.field public static final CB_BIC_WR:I = 0x5

.field public static final CB_BOIC:I = 0x3

.field public static final CB_BOIC_EXHC:I = 0x4

.field public static final CB_BS_MT:I = 0xa

.field public static final CDIV_CF_ALL:I = 0x4

.field public static final CDIV_CF_ALL_CONDITIONAL:I = 0x5

.field public static final CDIV_CF_BUSY:I = 0x1

.field public static final CDIV_CF_NOT_LOGGED_IN:I = 0x6

.field public static final CDIV_CF_NOT_REACHABLE:I = 0x3

.field public static final CDIV_CF_NO_REPLY:I = 0x2

.field public static final CDIV_CF_UNCONDITIONAL:I = 0x0

.field public static final CDIV_CF_UNKNOWN:I = -0x1

.field public static final CLIP_DISABLE:I = 0x0

.field public static final CLIP_ENABLE:I = 0x1

.field public static final CLIP_MODE_NOT_PROVISIONED:I = 0x0

.field public static final CLIP_MODE_PROVISIONED:I = 0x1

.field public static final CLIP_MODE_UNKNOWN:I = 0x2

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_MODE_NOT_PROVISIONED:I = 0x0

.field public static final CLIR_MODE_PROVISIONED_PERMANENT:I = 0x1

.field public static final CLIR_MODE_TEMPORARY_ALLOW:I = 0x4

.field public static final CLIR_MODE_TEMPORARY_RESTRICTED:I = 0x3

.field public static final CLIR_MODE_UNKNOWN:I = 0x2

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final SS_BARR_TYPE_BAIC_bit:I = 0x8

.field public static final SS_BARR_TYPE_BAOC_bit:I = 0x1

.field public static final SS_BARR_TYPE_BIC_ROAM_bit:I = 0xa

.field public static final SS_BARR_TYPE_BOIC_NOT_HC_bit:I = 0x4

.field public static final SS_BARR_TYPE_BOIC_bit:I = 0x2

.field public static final SS_GET_ACB:I = 0x76

.field public static final SS_GET_CF:I = 0x64

.field public static final SS_GET_CLIP:I = 0x6a

.field public static final SS_GET_CLIR:I = 0x6c

.field public static final SS_GET_COLP:I = 0x6e

.field public static final SS_GET_COLR:I = 0x70

.field public static final SS_GET_CW:I = 0x72

.field public static final SS_GET_ICB:I = 0x66

.field public static final SS_GET_OCB:I = 0x68

.field public static final SS_GET_SD:I = 0x74

.field public static final SS_PUT_ACB:I = 0x77

.field public static final SS_PUT_CF:I = 0x65

.field public static final SS_PUT_CLIP:I = 0x6b

.field public static final SS_PUT_CLIR:I = 0x6d

.field public static final SS_PUT_COLP:I = 0x6f

.field public static final SS_PUT_COLR:I = 0x71

.field public static final SS_PUT_CW:I = 0x73

.field public static final SS_PUT_ICB:I = 0x67

.field public static final SS_PUT_OCB:I = 0x69


# instance fields
.field action:I

.field condition:I

.field enable:Z

.field number:Ljava/lang/String;

.field password:Ljava/lang/String;

.field requestId:I

.field serviceClass:I

.field timeSeconds:I

.field type:I

.field valueList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 93
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 141
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 142
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    const/16 p1, 0xff

    .line 143
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 125
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 126
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    .line 127
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 128
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->valueList:[Ljava/lang/String;

    .line 129
    iput p6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 130
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;III)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 108
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    .line 109
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 110
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 111
    iput p5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 112
    iput p6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    .line 113
    iput p7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 99
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 100
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 101
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    const/16 p1, 0xff

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 135
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 136
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 118
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 119
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 120
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    return-void
.end method
