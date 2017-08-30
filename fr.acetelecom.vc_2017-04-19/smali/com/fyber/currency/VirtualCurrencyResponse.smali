.class public Lcom/fyber/currency/VirtualCurrencyResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/b/l$a;


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->a:D

    iput-object p3, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->e:Z

    return-void
.end method


# virtual methods
.method public getCurrencyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaOfCoins()D
    .locals 2

    iget-wide v0, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->a:D

    return-wide v0
.end method

.method public getLatestTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/currency/VirtualCurrencyResponse;->e:Z

    return v0
.end method
