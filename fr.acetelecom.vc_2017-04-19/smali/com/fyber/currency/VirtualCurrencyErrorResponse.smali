.class public Lcom/fyber/currency/VirtualCurrencyErrorResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/b/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    }
.end annotation


# instance fields
.field private final a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    iput-object p2, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
