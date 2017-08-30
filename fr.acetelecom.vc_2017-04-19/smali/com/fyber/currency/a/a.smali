.class public final Lcom/fyber/currency/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/currency/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/currency/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const-string v2, ""

    const-string v3, "Unknown error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fyber/currency/a/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/b/l$a;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/a/a$a;

    if-nez v0, :cond_0

    new-instance v1, Lcom/fyber/currency/a/a$a;

    invoke-direct {v1, p0, v4}, Lcom/fyber/currency/a/a$a;-><init>(Lcom/fyber/currency/a/a;B)V

    invoke-static {v1, v2}, Lcom/fyber/currency/a/a$a;->a(Lcom/fyber/currency/a/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v3, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_1
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/fyber/currency/a/a$a;->a(Lcom/fyber/currency/a/a$a;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    move-object v0, p1

    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/a/a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/fyber/currency/a/a$a;

    invoke-direct {v0, p0, v4}, Lcom/fyber/currency/a/a$a;-><init>(Lcom/fyber/currency/a/a;B)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/currency/a/a$a;->a(Lcom/fyber/currency/a/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Lcom/fyber/currency/a/a$a;->b(Lcom/fyber/currency/a/a$a;)Lcom/fyber/b/l$a;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/fyber/currency/a/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    :goto_4
    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_2

    :cond_5
    move-object p1, p2

    goto :goto_3

    :cond_6
    const-string v1, "VCSCache"

    const-string v2, "The VCS was queried less than 15s ago.Replying with cached response"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/16 v0, 0xd

    const/16 v1, 0xf

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    move-object v0, p1

    :goto_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/a/a$a;

    if-nez v0, :cond_8

    new-instance v0, Lcom/fyber/currency/a/a$a;

    invoke-direct {v0, p0, v4}, Lcom/fyber/currency/a/a$a;-><init>(Lcom/fyber/currency/a/a;B)V

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_a

    :goto_6
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v0, v2}, Lcom/fyber/currency/a/a$a;->a(Lcom/fyber/currency/a/a$a;Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    move-object v0, p2

    goto :goto_5

    :cond_a
    move-object p1, p2

    goto :goto_6
.end method

.method public final a(Lcom/fyber/b/l$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/currency/a/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fyber/currency/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fyber/currency/a/a$a;-><init>(Lcom/fyber/currency/a/a;B)V

    iget-object v1, p0, Lcom/fyber/currency/a/a;->b:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0, p1}, Lcom/fyber/currency/a/a$a;->a(Lcom/fyber/currency/a/a$a;Lcom/fyber/b/l$a;)Lcom/fyber/b/l$a;

    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0

    :cond_2
    move-object p2, p3

    goto :goto_1
.end method
