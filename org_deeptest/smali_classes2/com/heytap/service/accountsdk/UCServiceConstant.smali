.class public Lcom/heytap/service/accountsdk/UCServiceConstant;
.super Ljava/lang/Object;
.source "UCServiceConstant.java"


# static fields
.field private static final ACTION_NM_SERVER_OP_BYAPPCODE_XOR_8:Ljava/lang/String; = "kge&fmizem&{mz~mz&gxxg{mz~akmjqixxkglm"

.field private static final ACTION_NM_SERVER_OP_XOR_8:Ljava/lang/String; = "kge&fmizem&{mz~mz&gxxg{mz~akm"

.field public static final ACTION_USERCENTER_FUC_ACTIVITY_XOR_8:Ljava/lang/String; = "gxxg&af|mf|&ik|agf&n}fk|agffi~aoi|agf"

.field public static final ACTION_USERCENTER_SELECT_ACCOUNT_XOR_8:Ljava/lang/String; = "gxxg&af|mf|&ik|agf&{mdmk|&ikkg}f|"

.field private static final PROVIDER_SERVICE_ACCOUNT_URI_XOR_8:Ljava/lang/String; = "kgf|mf|2\'\'kge&gxxg&{mz~akm&ikkg}f|&|gcmfxzg~almz"

.field private static final PROVIDER_USRECENTER_ACCOUNT_URI_XOR_8:Ljava/lang/String; = "kgf|mf|2\'\'kge&gxxg&}{mzkmf|mz&ikkg}f|afng"

.field public static final UPDATE_ACCOUNT_INFO_BROAD_CAST_XOR_8:Ljava/lang/String; = "kge&gxxg&{mz~akm&ikkg}f|&}xli|mikkg}f|afngzmkma~mz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNmAppcodeServiceAction()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "kge&fmizem&{mz~mz&gxxg{mz~akmjqixxkglm"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getNmServiceAction()Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "kge&fmizem&{mz~mz&gxxg{mz~akm"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAIDLDesAskSigninByAppCodeXor8()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "kge&fmizem&iald&AI{c[aofafJqIxxKglm"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAIDLDesAskSigninXor8()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "kge&fmizem&iald&AI{c[aofaf"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAIDLDesAskTokenByAppCodeXor8()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "kge&fmizem&iald&AI{c\\gcmfJqIxxKglm"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAIDLDesAskTokenXor8()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "kge&fmizem&iald&AI{c\\gcmf"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAIDLDesCallbackXor8()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "kge&fmizem&iald&AKiddJikc"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderAppCodeXor8()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "IxxKglm"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTokenProvider()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "kgf|mf|2\'\'kge&gxxg&{mz~akm&ikkg}f|&|gcmfxzg~almz"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUCAccountInfo()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "kgf|mf|2\'\'kge&gxxg&}{mzkmf|mz&ikkg}f|afng"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectAccountAction()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "gxxg&af|mf|&ik|agf&{mdmk|&ikkg}f|"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ucFucAction()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "gxxg&af|mf|&ik|agf&n}fk|agffi~aoi|agf"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAccountInfoBroadCast()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "kge&gxxg&{mz~akm&ikkg}f|&}xli|mikkg}f|afngzmkma~mz"

    invoke-static {v0}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
