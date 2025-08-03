.class public Lorg/xbill/DNS/TXTRecord;
.super Lorg/xbill/DNS/TXTBase;
.source "TXTRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x50397a0652cbc79eL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/TXTBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 21
    new-instance p0, Lorg/xbill/DNS/TXTRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/TXTRecord;-><init>()V

    return-object p0
.end method
