.class public Lorg/xbill/DNS/KEYRecord;
.super Lorg/xbill/DNS/KEYBase;
.source "KEYRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x589e41991f74c08aL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lorg/xbill/DNS/KEYBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 296
    new-instance p0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    return-object p0
.end method
