.class synthetic Lnet/pubnative/sdk/core/config/PNConfigManager$5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->values()[Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager$5;->$SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I

    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager$5;->$SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I

    sget-object v1, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->CELLULAR:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager$5;->$SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I

    sget-object v1, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->WIFI:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
