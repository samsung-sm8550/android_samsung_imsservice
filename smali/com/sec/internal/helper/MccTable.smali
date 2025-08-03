.class public Lcom/sec/internal/helper/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# static fields
.field static sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/helper/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    .line 82
    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xca

    const-string v4, "gr"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xcc

    const-string v4, "nl"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xce

    const-string v4, "be"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xd0

    const-string v4, "fr"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xd4

    const-string v4, "mc"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xd5

    const-string v4, "ad"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xd6

    const-string v4, "es"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xd8

    const-string v4, "hu"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xda

    const-string v4, "ba"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xdb

    const-string v4, "hr"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xdc

    const-string/jumbo v4, "rs"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xde

    const-string v4, "it"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe1

    const-string/jumbo v4, "va"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe2

    const-string/jumbo v4, "ro"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe4

    const-string v4, "ch"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe6

    const-string v4, "cz"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe7

    const-string/jumbo v4, "sk"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xe8

    const-string v4, "at"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xea

    const-string v4, "gb"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v3, 0xee

    const-string v4, "dk"

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/helper/MccTable$MccEntry;

    const-string/jumbo v3, "se"

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string v3, "no"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v3, "fi"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v3, "lt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v3, "lv"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v3, "ee"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string/jumbo v3, "ru"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string/jumbo v3, "ua"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v3, "by"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v3, "md"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string/jumbo v3, "pl"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x106

    const-string v3, "de"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v3, "gi"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string/jumbo v3, "pt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v3, "lu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x110

    const-string v3, "ie"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v3, "is"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v3, "al"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string v3, "mt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v3, "cy"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v3, "ge"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v4, "am"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v4, "bg"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string/jumbo v4, "tr"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v4, "fo"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x121

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v3, "gl"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string/jumbo v3, "sm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string/jumbo v3, "si"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string v3, "mk"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v3, "li"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x129

    const-string v3, "me"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x12e

    const-string v3, "ca"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string/jumbo v3, "pm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x136

    const-string/jumbo v3, "us"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x137

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x138

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x139

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x13a

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x13b

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x13c

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string/jumbo v3, "pr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string/jumbo v3, "vi"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string v3, "mx"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v3, "jm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v3, "gp"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v3, "bb"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v3, "ag"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v3, "ky"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string/jumbo v3, "vg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v3, "bm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v3, "gd"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string v3, "ms"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v3, "kn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v3, "lc"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string/jumbo v3, "vc"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v3, "ai"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v4, "aw"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v4, "bs"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x16d

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v3, "dm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v3, "cu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v3, "do"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v3, "ht"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string/jumbo v3, "tt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string/jumbo v3, "tc"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v3, "az"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v3, "kz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v3, "bt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v3, "in"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x195

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x196

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string/jumbo v3, "pk"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v3, "af"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v3, "lk"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string v3, "mm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v3, "lb"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v3, "jo"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string/jumbo v3, "sy"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v3, "iq"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v3, "kw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string/jumbo v3, "sa"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string/jumbo v3, "ye"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string/jumbo v3, "om"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a7

    const-string/jumbo v3, "ps"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v3, "ae"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v4, "il"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v4, "bh"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string/jumbo v4, "qa"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string v4, "mn"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string/jumbo v4, "np"

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1ae

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1af

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v3, "ir"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string/jumbo v3, "uz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string/jumbo v3, "tj"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v3, "kg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string/jumbo v3, "tm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b8

    const-string v3, "jp"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1b9

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c2

    const-string v3, "kr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string/jumbo v3, "vn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v3, "hk"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string v3, "mo"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v3, "kh"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v3, "la"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1cd

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string/jumbo v3, "tw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v3, "kp"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v3, "bd"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string v3, "mv"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string v3, "my"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1f9

    const-string v3, "au"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v3, "id"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string/jumbo v3, "tl"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string/jumbo v3, "ph"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string/jumbo v3, "th"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x20d

    const-string/jumbo v3, "sg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v3, "bn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x212

    const-string/jumbo v3, "nz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string v3, "mp"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v3, "gu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string/jumbo v3, "nr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string/jumbo v3, "pg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string/jumbo v3, "to"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string/jumbo v3, "sb"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string/jumbo v3, "vu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v3, "fj"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string/jumbo v3, "wf"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v3, "as"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v3, "ki"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string v3, "nc"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string/jumbo v3, "pf"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v3, "ck"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string/jumbo v3, "ws"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v3, "fm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string v3, "mh"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string/jumbo v3, "pw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x229

    const-string/jumbo v3, "tv"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x22b

    const-string/jumbo v3, "nu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v3, "eg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v3, "dz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v3, "ma"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string/jumbo v3, "tn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v3, "ly"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v3, "gm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string/jumbo v3, "sn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string v3, "mr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string v3, "ml"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v3, "gn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v3, "ci"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v3, "bf"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string v3, "ne"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string/jumbo v3, "tg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v3, "bj"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string v3, "mu"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v3, "lr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string/jumbo v3, "sl"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v3, "gh"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string v3, "ng"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string/jumbo v3, "td"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v3, "cf"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v3, "cm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v3, "cv"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string/jumbo v3, "st"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v3, "gq"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v3, "ga"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v3, "cg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v3, "cd"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v3, "ao"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v3, "gw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string/jumbo v3, "sc"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string/jumbo v3, "sd"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v3, "et"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string/jumbo v3, "so"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v3, "dj"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v3, "ke"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string/jumbo v3, "tz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string/jumbo v3, "ug"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v3, "bi"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string v3, "mz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string/jumbo v3, "zm"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string v3, "mg"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string/jumbo v3, "re"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string/jumbo v3, "zw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string v3, "na"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string v3, "mw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v3, "ls"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v3, "bw"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string/jumbo v3, "sz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v3, "km"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x28f

    const-string/jumbo v3, "za"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v3, "er"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x292

    const-string/jumbo v3, "sh"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x293

    const-string/jumbo v3, "ss"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v3, "bz"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v3, "gt"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string/jumbo v3, "sv"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v3, "hn"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string v3, "ni"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v3, "cr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string/jumbo v3, "pa"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string/jumbo v3, "pe"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v3, "ar"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v3, "br"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v3, "cl"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v3, "co"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string/jumbo v3, "ve"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v3, "bo"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v3, "gy"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v3, "ec"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v3, "gf"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string/jumbo v3, "py"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string/jumbo v3, "sr"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string/jumbo v3, "uy"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v3, "fk"

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/helper/MccTable$MccEntry;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/sec/internal/helper/MccTable;->entryForMcc(I)Lcom/sec/internal/helper/MccTable$MccEntry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 59
    const-string p0, ""

    return-object p0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mIso:Ljava/lang/String;

    return-object p0
.end method

.method private static entryForMcc(I)Lcom/sec/internal/helper/MccTable$MccEntry;
    .locals 2

    .line 39
    new-instance v0, Lcom/sec/internal/helper/MccTable$MccEntry;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/MccTable$MccEntry;-><init>(ILjava/lang/String;)V

    .line 41
    sget-object p0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    sget-object v0, Lcom/sec/internal/helper/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/MccTable$MccEntry;

    return-object p0
.end method
