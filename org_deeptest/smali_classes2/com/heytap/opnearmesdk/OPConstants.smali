.class public Lcom/heytap/opnearmesdk/OPConstants;
.super Ljava/lang/Object;
.source "OPConstants.java"


# static fields
.field static final ACCOUNT_PACKAGE_NAME_XOR8:Ljava/lang/String; = "kge&gfmxd}{&ikkg}f|"

.field public static final EXTRA_BROADCAST_ACTION_USERENTITY_KEY:Ljava/lang/String; = "extra_user_entity"

.field static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field static final EXTRA_REQUEST_FROM:Ljava/lang/String; = "extra_request_from"

.field static final MANAGER_CALLBACK_ACTIVITY_ACTION:Ljava/lang/String; = "extra_activity_action"

.field static final OP_ACCOUNT_PACKAGE_NAME:Ljava/lang/String;

.field static final OP_ACCOUNT_TYPE:Ljava/lang/String;

.field static final USER_DATA_OPLUS_TOKEN:Ljava/lang/String; = "oplustoken"

.field static final USER_DATA_OP_TOKEN:Ljava/lang/String; = "token"

.field static final USER_DATA_USERNAME:Ljava/lang/String; = "username"

.field static final VISIBILITY_CHANGE:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-string v0, "kge&gfmxd}{&ikkg}f|"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_PACKAGE_NAME:Ljava/lang/String;

    .line 15
    const-string v0, "kge&gfmxd}{&ikkg}f|"

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
