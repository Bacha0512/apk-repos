.class public final Lcom/fyber/utils/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->b()Lcom/fyber/Fyber$Settings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$Settings;->getUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
