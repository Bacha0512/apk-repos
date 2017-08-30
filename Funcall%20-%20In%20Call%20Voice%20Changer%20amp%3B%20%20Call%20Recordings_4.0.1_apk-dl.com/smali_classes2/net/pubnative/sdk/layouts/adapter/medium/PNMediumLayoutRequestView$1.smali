.class synthetic Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

.field static final synthetic $SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$IconPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->values()[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->TOP:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    invoke-virtual {v1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->CENTER:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    invoke-virtual {v1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->BOTTOM:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    invoke-virtual {v1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :goto_2
    invoke-static {}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->values()[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$IconPosition:[I

    :try_start_3
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$IconPosition:[I

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->RIGHT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    invoke-virtual {v1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$IconPosition:[I

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->LEFT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    invoke-virtual {v1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
