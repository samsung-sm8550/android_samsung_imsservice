.class Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;
.super Ljava/lang/Object;
.source "StackRequestBuilderUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StackRequestBuilderUtil"

.field private static translateMnoInverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/Mno;",
            ">;"
        }
    .end annotation
.end field

.field private static translateMnoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/Mno;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    .line 28
    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CHATR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZTAR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOBILICITY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SASKTEL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x89

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FIZ:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ALTICE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DPAC:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ASTCA_US:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CBN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TRUPHONE_HK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CUHK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTM:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MACAU_THREE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MACAU_SMARTONE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TSTAR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ELISA_FINLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DNA_FINLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AUSTRIA_A1:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIANOVA_ITALY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_CZ:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_ITALY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_NETHERLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_IRELAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_IS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_PORTUGAL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_GREECE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_HUNGARY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CROATIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_ROMANIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_ALBANIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CZ:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PROXIMUS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->METEOR_IRELAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_SWITZERLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_MOROCCO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_SENEGAL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_JO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KPN_NED:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI_HUNGARY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x93

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_HUNGARY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_ROMANIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_GREECE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEMACH_SVN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PTR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_CROATIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_EE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SUNRISE_CH:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZEB:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x94

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SBERBANK_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x95

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VELCOM_BY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TANGO_LUXEMBOURG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BTOP:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_AUSTRIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MAGTICOM_GE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIRGIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GAMMA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SUPERDRUG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_MK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_ME:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MEO_PORTUGAL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_BELGIUM:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_LUXEMBOURG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPM:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FREE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LYCA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_IRELAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PLUS_POLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x113

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EPIC_MT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TRUPHONE_NED:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->EPIC_CYPRUS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTEL_BOSNIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LMT_LATVIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ONENONE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x14a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELE2_SWE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_FINLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ICENET_NORWAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVA_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->OOREDOO_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->OOREDOO_QATAR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOD_QATAR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x120

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ECONET_LESOTHO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODACOM_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_TURKEY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AVEA_TURKEY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TURKCELL_TURKEY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MAROC_MOROCCO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->INWI_MOROCCO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x114

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MCCI_IRAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_KSA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->STC_KSA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIRGIN_KSA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x118

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_DK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTN_IRAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTN_GHANA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BATELCO_BAHRAIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_JO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_QATAR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ASIACELL_IRAQ:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->UFONE_PAK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GRAMEENPHONE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VITI:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOBILEONE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->YTL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELKOMSEL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DTAC:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIETTEL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->UMOBILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TPG_SG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_EG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x116

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->NTEL_NIGERIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_LIBERIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x117

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->JTL_KENYA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_COLOMBIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AVANTEL_COLOMBIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_ARGENTINA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_PERU:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ENTEL_PERU:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_GUATEMALA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_CHILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x88

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ENTEL_BOLIVIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_URUGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT_MEXICO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_ECUADOR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x92

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ALIV_BAHAMAS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x99

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PERSONAL_ARGENTINA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ALTAN_MEXICO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRBUS_MEXICO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_COLOMBIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_PANAMA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_MEXICO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_CHILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->WOM_CHILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->WOM_COLOMBIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_URUGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ANTEL_URUGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ENTEL_CHILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_COLOMBIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_BOLIVIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_PARAGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->OI_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_ECUADOR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ALE_ECUADOR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_GUATEMALA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_PANAMA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_COSTARICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_HONDURAS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_ELSALVADOR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_NICARAGUA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_PUERTO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CABLE_JAMAICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CABLE_BARBADOS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BTC_BAHAMAS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xfc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI_BELIZE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->UTS_CURACAO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_HONDURAS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PERSONAL_PARAGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_PARAGUAY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_NICARAGUA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_ELSALVADOR:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VTR_CHILE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->AMERICANET_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->UNIFIQUE_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CELLONE_BERMUDA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVA_DOMINICAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BMOBILE_TRINIDAD:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x111

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TRACFONE_CLARO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x119

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LIBERTY_PUERTO:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ENET_GUYANA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BRISANET_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x11f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SURF_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x145

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DAUPHIN_STMARTIN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PARADISE_BERMUDA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ARQIA_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ALGAR_BRAZIL:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGICEL_JAMAICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BITEL_PERU:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_ANGUILLA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_BVI:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_GRENADA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_ST_KITTS_NEVIS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_DOMINICA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_TURKS_CAICOS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x13f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->APUA_ANTIGUA_AND_BARBUDA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x146

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_ST_LUCIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SETAR_ARUBA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x144

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_ANTIGUA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x147

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_CAYMAN:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->FLOW_ST_VINCENT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TANGO_US:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x10d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TS32_DEFAULT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x142

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoInverseMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    .line 405
    new-array p2, p2, [I

    .line 407
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    .line 408
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    aput v1, p2, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method static translateConfigDualIms()I
    .locals 2

    .line 587
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    .line 589
    const-string v1, "DSDS_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 591
    :cond_0
    const-string v1, "DSDA_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/HashMap<",
            "**>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 600
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 603
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 604
    invoke-static {p0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader_/Pair;->createPair(Lcom/google/flatbuffers/FlatBufferBuilder;II)I

    move-result v2

    .line 605
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static translateFeatureTag(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feature Tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const-string v2, "feature Tag MMTEL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const-string v2, "feature Tag MMTEL Video"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    .line 423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const-string v2, "feature Tag MMTEL Call-composer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x38

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_2
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    const-string v2, "feature Tag IPCALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_3
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    const-string v2, "feature Tag IPCALL VIDEO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_4
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    const-string v2, "feature Tag IPCALL Video Only"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_5
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 442
    const-string v2, "feature Tag PRESENCE_DISCOVERY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x13

    .line 443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_6
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    const/16 v3, 0x14

    if-eqz v2, :cond_7

    .line 446
    const-string v2, "feature Tag CHAT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_7
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v4, v2

    invoke-static {p0, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 450
    const-string v2, "feature Tag SESSION_MODE_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_8
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 454
    const-string v2, "feature Tag SF_GROUP_CHAT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15

    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_9
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 458
    const-string v2, "feature Tag FT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x16

    .line 459
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_a
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 462
    const-string v2, "feature Tag FT_HTTP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x19

    .line 463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_b
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP_EXTRA:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 466
    const-string v2, "feature Tag FT_HTTP_EXTRA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x21

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_c
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 470
    const-string v2, "feature Tag FT_STORE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x18

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_d
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 474
    const-string v2, "feature Tag FT_THUMBNAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x17

    .line 475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_e
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 478
    const-string v2, "feature Tag ISH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x12

    .line 479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_f
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 482
    const-string v2, "feature Tag VSH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 483
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_10
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH_OUTSIDE_CALL:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 486
    const-string v2, "feature Tag VSH_OUTSIDE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1a

    .line 487
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_11
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    const-string v2, "feature Tag INTEGRATED_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1b

    .line 491
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_12
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 494
    const-string v2, "feature Tag STANDALONE_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_13
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 498
    const-string v2, "feature Tag SOCIAL_PRESENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1c

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_14
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 502
    const-string v2, "feature Tag GEOLOCATION_PUSH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f

    .line 503
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_15
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 506
    const-string v2, "feature Tag GEOLOCATION_PULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1d

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_16
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 510
    const-string v2, "feature Tag GEOLOCATION_PULL_FT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1e

    .line 511
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_17
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 514
    const-string v2, "feature Tag CALL_COMPOSER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xe

    .line 515
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_18
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 518
    const-string v2, "feature Tag SHARED_MAP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xf

    .line 519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_19
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 522
    const-string v2, "feature Tag SHARED_SKETCH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x11

    .line 523
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1a
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 526
    const-string v2, "feature Tag POST_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    .line 527
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_1b
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 530
    const-string v2, "feature Tag STICKER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x25

    .line 531
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_1c
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 534
    const-string v2, "feature Tag FT_VIA_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x26

    .line 535
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_1d
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 538
    const-string v2, "feature Tag GEO_VIA_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x27

    .line 539
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_1e
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 542
    const-string v2, "feature Tag PUBLIC_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2a

    .line 543
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1f
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 546
    const-string v2, "feature Tag LAST_SEEN_ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2b

    .line 547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_20
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 550
    const-string v2, "feature Tag CHATBOT_CHAT_SESSION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2c

    .line 551
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_21
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 554
    const-string v2, "feature Tag CHATBOT_STANDALONE_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2d

    .line 555
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_22
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 558
    const-string v2, "feature Tag EXTENDED_BOT_MSG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2e

    .line 559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_23
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 562
    const-string v2, "feature Tag CHATBOT_ROLE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x36

    .line 563
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_24
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 566
    const-string v2, "feature Tag CANCEL_MESSAGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2f

    .line 567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_25
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 570
    const-string v2, "feature Tag PLUG_IN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x30

    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_26
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 574
    const-string p0, "feature Tag EXTENDED_MESSAGING"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x31

    .line 575
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    return-object v0
.end method

.method static translateMno(Lcom/sec/internal/constants/Mno;)I
    .locals 1

    .line 384
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 387
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "not added translate Mno Map"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 391
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static translateMnoInverse(I)Lcom/sec/internal/constants/Mno;
    .locals 2

    .line 395
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoInverseMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/Mno;

    if-nez p0, :cond_0

    .line 398
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "not added translate Mno Inverse Map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method
