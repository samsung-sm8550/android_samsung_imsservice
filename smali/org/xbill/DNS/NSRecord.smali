.class public Lorg/xbill/DNS/NSRecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "NSRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x6c2c7392fca0ca6L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/NSRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/NSRecord;-><init>()V

    return-object p0
.end method
