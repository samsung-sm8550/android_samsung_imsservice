.class public Lorg/xbill/DNS/DNSKEYRecord;
.super Lorg/xbill/DNS/KEYBase;
.source "DNSKEYRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7874d826330d9b3aL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/xbill/DNS/KEYBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 45
    new-instance p0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    return-object p0
.end method
