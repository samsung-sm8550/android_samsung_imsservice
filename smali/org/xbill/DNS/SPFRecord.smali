.class public Lorg/xbill/DNS/SPFRecord;
.super Lorg/xbill/DNS/TXTBase;
.source "SPFRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x1d2760f41f193762L


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
    new-instance p0, Lorg/xbill/DNS/SPFRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/SPFRecord;-><init>()V

    return-object p0
.end method
